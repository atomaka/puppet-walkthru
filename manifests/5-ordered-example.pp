notify { 'First': }
notify { 'Second':
  require => Notify['First'],
}
notify { 'Third':
  require => Notify['Second'],
}
notify { 'Fourth':
  require => Notify['Third'],
}
notify { 'Fifth':
  require => Notify['Fourth'],
}
notify { 'Sixth':
  require => Notify['Fifth'],
}
notify { 'Seventh':
  require => Notify['Sixth'],
}
